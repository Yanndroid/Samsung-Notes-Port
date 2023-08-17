.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;
.super Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;
.source "SourceFile"


# static fields
.field private static final SUCESS:Ljava/lang/String; = "Success"

.field private static final TAG:Ljava/lang/String; = "SubmitRunnable"


# instance fields
.field private final mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    return-void
.end method

.method private printRequest(Ljava/lang/String;LcoeditCoreMessage/SubmitRequest;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request# RequestId: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], uuid: ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getNoteId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], requestByte Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request# clientCmd: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditCoreMessage/SubmitRequest;->getClientCmd()LcoeditCoreMessage/ClientCmd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], isValidate: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditCoreMessage/SubmitRequest;->getIsValidate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], workspaceVersion: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LcoeditCoreMessage/SubmitRequest;->getWorkspaceVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, LcoeditCoreMessage/SubmitRequest;->getCheckpointCoeditopPair()LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object p1

    const-string p2, "Request"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->printCheckPointOperationPair(Ljava/lang/String;LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-void
.end method

.method private printResponse(LcoeditCoreMessage/SubmitResponse;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response# "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "uuid: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getNoteId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], checkPoint: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/SubmitResponse;->getCheckpoint()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/SubmitResponse;->hasResponseResult()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LcoeditCoreMessage/SubmitResponse;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResponseResultLog(LcoeditCoreMessage/ResponseResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SubmitRunnable"

    return-object v0
.end method

.method public run()V
    .locals 7

    const-string v0, "Success"

    const-string v1, "WORKSPACE_ERROR_BLOCK"

    const-string v2, "SubmitRunnable"

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->run()V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->hasSubmitRequestQueue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_4

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setResultCode(I)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isWorkspaceBlocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->onError(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isUnavailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setPausedByNetwork(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->releaseLock(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isRetryNeeded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isConnectNeeded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->reconnect(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->takeSubmitRequest()LcoeditCoreMessage/SubmitRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getWorkspaceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->getRequestNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->printRequest(Ljava/lang/String;LcoeditCoreMessage/SubmitRequest;)V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v5, v4, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->submitRequest(Ljava/lang/String;LcoeditCoreMessage/SubmitRequest;)LcoeditCoreMessage/SubmitResponse;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->printResponse(LcoeditCoreMessage/SubmitResponse;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->putReceiveMsg(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v3}, LcoeditCoreMessage/SubmitResponse;->getCheckpoint()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setSubmitCheckPoint(J)V

    invoke-virtual {v3}, LcoeditCoreMessage/SubmitResponse;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object v3

    invoke-virtual {v3}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setResultCode(I)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isWorkspaceBlocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isUnavailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setPausedByNetwork(Ljava/lang/String;)V

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->releaseLock(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_7
    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isRetryNeeded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isConnectNeeded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->reconnect(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_7

    :catch_0
    move-exception v3

    :try_start_2
    sget-object v4, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    invoke-virtual {v4}, Lio/grpc/Status$Code;->value()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->setResultCode(I)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setResultCode(I)V

    invoke-static {v3}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isWorkspaceBlocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->onError(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    invoke-static {v3}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isUnavailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setPausedByNetwork(Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->releaseLock(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    invoke-static {v3}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isRetryNeeded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_5
    goto :goto_4

    :cond_b
    invoke-static {v3}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isConnectNeeded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->reconnect(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    :cond_d
    const-string v0, "CONCURRENCY_ERROR_SUBMIT_FAILED"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->onError(Ljava/lang/String;)V

    :goto_6
    return-void

    :goto_7
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->getResultCode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setResultCode(I)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isWorkspaceBlocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isUnavailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isRetryNeeded(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isConnectNeeded(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_8

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->reconnect(Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->setPausedByNetwork(Ljava/lang/String;)V

    :cond_10
    :goto_8
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/SubmitRunnable;->mData:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->releaseLock(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable;->onError(Ljava/lang/String;)V

    :goto_9
    throw v3
.end method
